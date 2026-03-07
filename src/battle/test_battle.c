#include "../../include/types.h"
#include "../../include/battle.h"
#include "../../include/message.h"
#include "../../include/test_battle.h"

#ifdef DEBUG_BATTLE_SCENARIOS

static void NormalizeMessage(char *s)
{
    int read = 0;
    int write = 0;

    while (s[read] == ' ' || s[read] == '\t' || s[read] == '\r' || s[read] == '\n') {
        read++;
    }

    while (s[read] != '\0') {
        s[write++] = s[read++];
    }

    while (write > 0 && (s[write - 1] == ' ' || s[write - 1] == '\t' || s[write - 1] == '\r' || s[write - 1] == '\n')) {
        write--;
    }

    s[write] = '\0';
}

static BOOL MessageContains(const char *message, const char *substring)
{
    int i = 0;

    if (substring[0] == '\0') {
        return TRUE;
    }

    for (i = 0; message[i] != '\0'; i++) {
        int j = 0;
        while (substring[j] != '\0' && message[i + j] == substring[j]) {
            j++;
        }
        if (substring[j] == '\0') {
            return TRUE;
        }
    }

    return FALSE;
}

void LONG_CALL BattleMessage_ExpandPlaceholders(struct BattleSystem *battleSystem, MsgData *data, BattleMessage *msg)
{
    String *str = NewString_ReadMsgData(data, msg->id);
    StringExpandPlaceholders(battleSystem->msgFormat, battleSystem->msgBuffer, str);
    String_Delete(str);

    struct TestBattleScenario *scenario = TestBattle_GetCurrentScenario();

    char actualMessage[TEST_BATTLE_MESSAGE_LEN] = {0};
    int out = 0;

    for (int i = 0; i < battleSystem->msgBuffer->size; i++) {
        u32 code = battleSystem->msgBuffer->data[i];
        char character = '\0';

        if (code <= 0x0144) {
            character = (char)(code - 234);
        } else {
            switch (code) {
            case 0xFFFF:
                character = '\0';
                return;
            case 0x01BE:
                character = '-';
                break;
            case 0x01DE:
            case 0x0001:
            case 0xE000:
            case 0x25BC:
            case 0x25BD:
                character = ' ';
                break;
            case 0x01AB:
                character = '!';
                break;
            case 0x01AD:
                character = ',';
                break;
            case 0x01AE:
                character = '.';
                break;
            case 0x01B3:
                character = '\'';
                break;
            default:
                character = (char)(code - 228);
                break;
            }
        }
        debug_printf("%c", character);
        actualMessage[out++] = character;
    }
    actualMessage[out] = '\0';

    char expectedMessage[TEST_BATTLE_MESSAGE_LEN] = {0};
    for (int i = 0; i < TEST_BATTLE_MESSAGE_LEN - 1; i++) {
        expectedMessage[i] = scenario->expectations[scenario->expectationPassCount].expectationValue.message[i];
        if (expectedMessage[i] == '\0') {
            break;
        }
    }

    NormalizeMessage(actualMessage);
    NormalizeMessage(expectedMessage);

    BOOL messageMatch = FALSE;
    if (scenario->expectations[scenario->expectationPassCount].expectationType == EXPECTATION_TYPE_MESSAGE_CONTAINS) {
        messageMatch = MessageContains(actualMessage, expectedMessage);
    } else {
        messageMatch = TRUE;
        for (int i = 0; i < TEST_BATTLE_MESSAGE_LEN; i++) {
            if (actualMessage[i] != expectedMessage[i]) {
                messageMatch = FALSE;
                break;
            }
            if (actualMessage[i] == '\0') {
                break;
            }
        }
    }

    debug_printf("\n");

    if (messageMatch) {
        scenario->expectationPassCount++;
    }
}

#endif // DEBUG_BATTLE_SCENARIOS
