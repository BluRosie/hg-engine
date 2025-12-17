.include "asm/include/battle_commands.inc"

.data

_Start:
    // If the Totem Pokemon is badly poisoned, override our held item to a Lum Berry.
    CompareMonDataToValue OPCODE_FLAG_NOT, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_STATUS, STATUS_BAD_POISON, _CheckIfPrimaryStatus
    UpdateMonData OPCODE_SET, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_HELD_ITEM, ITEM_LUM_BERRY
    Wait
    GoTo _MessageChecks

// If the Totem Pokemon has any other non-volatile status, there is a 1 in 3 chance for it to be given a Lum Berry.
_CheckIfPrimaryStatus:
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_STATUS, STATUS_NONE, _MessageChecks
    Random 2, 0
    CompareVarToValue OPCODE_GT, BSCRIPT_VAR_CALC_TEMP, 0, _MessageChecks
    UpdateMonData OPCODE_SET, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_HELD_ITEM, ITEM_LUM_BERRY
    Wait

_MessageChecks:
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_HELD_ITEM, ITEM_FANCY_APPLE, _CrispMessage
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_HELD_ITEM, ITEM_COMET_SHARD, _GlitteringMessage
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_HELD_ITEM, ITEM_HEART_SCALE, _GlitteringMessage
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_HELD_ITEM, ITEM_CASTELIACONE, _MeltingMessage
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_HELD_ITEM, ITEM_TOXIC_ORB, _CautiousMessage
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_HELD_ITEM, ITEM_POISON_BARB, _CautiousMessage
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_HELD_ITEM, ITEM_SNOWBALL, _OutOfSeasonMessage
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_HELD_ITEM, ITEM_LIGHT_BALL, _BrightMessage
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_HELD_ITEM, ITEM_LEEK, _LeakMessage
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_HELD_ITEM, ITEM_UTILITY_UMBRELLA, _WeatherMessage
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_HELD_ITEM, ITEM_HEAT_ROCK, _WarmMessage
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_HELD_ITEM, ITEM_DRAGON_FANG, _PointyMessage
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_HELD_ITEM, ITEM_KINGS_ROCK, _PointyMessage
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_HELD_ITEM, ITEM_TIN_OF_BEANS, _WellChewedMessage
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_HELD_ITEM, ITEM_ODD_KEYSTONE, _SurprisingMessage
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_HELD_ITEM, ITEM_THICK_CLUB, _HeftyMessage
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_HELD_ITEM, ITEM_RARE_BONE, _HeftyMessage
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_HELD_ITEM, ITEM_HARD_STONE, _HeftyMessage
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_HELD_ITEM, ITEM_IRON_BALL, _VeryHeavyMessage

_DefaultMessage:
    // An Aipom hands {0} a {1}!
    PrintMessage 1610, TAG_NICKNAME_ITEM, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP
    GoTo _Cleanup

_CrispMessage:
    // An Aipom hands {0} a perfectly crisp {1}!
    PrintMessage 1611, TAG_NICKNAME_ITEM, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP
    GoTo _Cleanup

_GlitteringMessage:
    // An Aipom hands {0} a glittering {1}!
    PrintMessage 1612, TAG_NICKNAME_ITEM, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP
    GoTo _Cleanup

_MeltingMessage:
    // An Aipom hands {0} a {1}! Hurry, or it’ll melt!
    PrintMessage 1613, TAG_NICKNAME_ITEM, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP
    GoTo _Cleanup

_CautiousMessage:
    // An Aipom cautiously hands {0} a {1}!
    PrintMessage 1614, TAG_NICKNAME_ITEM, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP
    GoTo _Cleanup

_OutOfSeasonMessage:
    // An Aipom hands {0} a {1}! At this time of year?
    PrintMessage 1615, TAG_NICKNAME_ITEM, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP
    GoTo _Cleanup

_BrightMessage:
    // An Aipom hands {0} a blindingly bright {1}!
    PrintMessage 1616, TAG_NICKNAME_ITEM, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP
    GoTo _Cleanup

_LeakMessage:
    // An Aipom hands {0} a {1}! Watch your step!
    PrintMessage 1617, TAG_NICKNAME_ITEM, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP
    GoTo _Cleanup

_WeatherMessage:
    // An Aipom hands {0} a {1}! How’s the weather over there?
    PrintMessage 1618, TAG_NICKNAME_ITEM, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP
    GoTo _Cleanup

_WarmMessage:
    // An Aipom hands {0} a pleasantly warm {1}!
    PrintMessage 1619, TAG_NICKNAME_ITEM, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP
    GoTo _Cleanup

_PointyMessage:
    // An Aipom hands {0} a {1}! Pointy!
    PrintMessage 1620, TAG_NICKNAME_ITEM, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP
    GoTo _Cleanup

_WellChewedMessage:
    // An Aipom hands {0} a well-chewed {1}!
    PrintMessage 1621, TAG_NICKNAME_ITEM, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP
    GoTo _Cleanup

_SurprisingMessage:
    // An Aipom hands {0} an... {1}? Where did they get that?!
    PrintMessage 1622, TAG_NICKNAME_ITEM, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP
    GoTo _Cleanup

_HeftyMessage:
    // An Aipom hands {0} a hefty {1}!
    PrintMessage 1623, TAG_NICKNAME_ITEM, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP
    GoTo _Cleanup

_VeryHeavyMessage:
    // An Aipom, with considerable strain, hoists an {1} into {0}’s hands!
    PrintMessage 1624, TAG_NICKNAME_ITEM, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP

_Cleanup: 
    Wait 
    WaitButtonABTime 30
    End 
