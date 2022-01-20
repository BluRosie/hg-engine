#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#define BUFF_SIZE 100

#define EVO_NONE                   0
#define EVO_HAPPINESS              1
#define EVO_HAPPINESS_DAY          2
#define EVO_HAPPINESS_NIGHT        3
#define EVO_LEVEL_UP               4
#define EVO_TRADE                  5
#define EVO_TRADE_ITEM             6
#define EVO_USE_ITEM               7
#define EVO_LEVEL_MORE_ATTACK      8
#define EVO_LEVEL_ATK_DEF_EQUAL    9
#define EVO_LEVEL_MORE_DEFENSE     10
#define EVO_LEVEL_PID_LOW          11
#define EVO_LEVEL_PID_HIGH         12
#define EVO_LEVEL_GEN_NEW_MON_1    13
#define EVO_LEVEL_GEN_NEW_MON_2    14
#define EVO_MAX_BEAUTY             15
#define EVO_USE_ITEM_MALE          16
#define EVO_USE_ITEM_FEMALE        17
#define EVO_USE_ITEM_DAY           18
#define EVO_USE_ITEM_NIGHT         19
#define EVO_KNOWS_MOVE             20
#define EVO_MON_IN_PARTY           21
#define EVO_LEVEL_MALE             22
#define EVO_LEVEL_FEMALE           23
#define EVO_LEVEL_MT_CORONET       24
#define EVO_LEVEL_ETERNA_FOREST    25
#define EVO_LEVEL_ROUTE_217        26

int main(int argc, char **argv)
{
    const char *sourcename = NULL, *monlistname = NULL, *itemlistname = NULL, *movelistname = NULL, *evolistname = NULL;
    char textfromfile[BUFF_SIZE];
    int i, evonum, elementnum, evoparam, monnum = 0;
    FILE *source, *monlist, *itemlist, *movelist, *evolist;

    if (argc != 2) // the simple error handling part
    {
        fprintf(stderr, "This generates the mon level data from a text file containing all the constants.\n");
        return 1;
    }

    sourcename = argv[1];

    if (strcmp(sourcename, "-") == 0)
    {
        fprintf(stderr, "Please specify a file with the raw data.\n");
        return 1;
    }
    else
    {
        source = fopen(sourcename, "r+");

        if (!source)
        {
            fprintf(stderr, "Could not find %s\n", sourcename);
            return 1;
        }
    }

    monlistname = "rawdata/monnums.txt";

    if (strcmp(monlistname, "-") == 0)
    {
        fprintf(stderr, "Please specify a file with the mon names.\n");
        fclose(source);
        return 1;
    }
    else
    {
        monlist = fopen(monlistname, "r+");

        if (!monlist)
        {
            fprintf(stderr, "Could not find %s\n", monlistname);
            return 1;
        }
    }

    itemlistname = "rawdata/itemnums.txt";

    if (strcmp(itemlistname, "-") == 0)
    {
        fprintf(stderr, "Please specify a file with the item names.\n");
        fclose(source);
        return 1;
    }
    else
    {
        itemlist = fopen(itemlistname, "r+");

        if (!itemlist)
        {
            fprintf(stderr, "Could not find %s\n", itemlistname);
            return 1;
        }
    }

    movelistname = "rawdata/movenums.txt";

    if (strcmp(movelistname, "-") == 0)
    {
        fprintf(stderr, "Please specify a file with the move names.\n");
        fclose(source);
        return 1;
    }
    else
    {
        movelist = fopen(movelistname, "r+");

        if (!movelist)
        {
            fprintf(stderr, "Could not find %s\n", movelistname);
            return 1;
        }
    }

    evolistname = "rawdata/evomethods.txt";

    if (strcmp(evolistname, "-") == 0)
    {
        fprintf(stderr, "Please specify a file with the evolution method names.\n");
        fclose(source);
        return 1;
    }
    else
    {
        evolist = fopen(evolistname, "r+");

        if (!evolist)
        {
            fprintf(stderr, "Could not find %s\n", evolistname);
            return 1;
        }
    }

    // god damn
    while (monnum <= 507)
    {
        // set up entry
        for (i = 0; i <= monnum; i++)
            fgets(textfromfile, BUFF_SIZE, monlist);
        strtok(textfromfile, "\n");
        printf("evodata %s\n", textfromfile);
        fseek(monlist, 0, SEEK_SET);

        for(evonum = 0; evonum < 7; evonum++)
        {
            // EVO METHOD

            fgets(textfromfile, 4, source);
            evoparam = strtol(textfromfile, NULL, 0x10);
            fgets(textfromfile, 4, source);
            evoparam |= strtol(textfromfile, NULL, 0x10) << 8;

            for (i = 0; i <= evoparam; i++)
                fgets(textfromfile, BUFF_SIZE, evolist);
            strtok(textfromfile, "\n");
            fseek(evolist, 0, SEEK_SET);

            printf("    evolution %s, ", textfromfile);

            // EVO PARAMETER

            fgets(textfromfile, 4, source);
            elementnum = strtol(textfromfile, NULL, 0x10);
            fgets(textfromfile, 4, source);
            elementnum |= strtol(textfromfile, NULL, 0x10) << 8;

            switch (evoparam)
            {
            case EVO_NONE: // group that just prints the number as the parameter
            case EVO_HAPPINESS:
            case EVO_HAPPINESS_DAY:
            case EVO_HAPPINESS_NIGHT:
            case EVO_LEVEL_UP: // level only useful as numerical parameter
            case EVO_TRADE:
            case EVO_LEVEL_MORE_ATTACK:
            case EVO_LEVEL_ATK_DEF_EQUAL:
            case EVO_LEVEL_MORE_DEFENSE:
            case EVO_LEVEL_PID_LOW:
            case EVO_LEVEL_PID_HIGH:
            case EVO_LEVEL_GEN_NEW_MON_1:
            case EVO_LEVEL_GEN_NEW_MON_2:
            case EVO_MAX_BEAUTY:
            case EVO_LEVEL_MALE:
            case EVO_LEVEL_FEMALE:
            case EVO_LEVEL_MT_CORONET:
            case EVO_LEVEL_ETERNA_FOREST:
            case EVO_LEVEL_ROUTE_217:
                printf("%d, ", elementnum);
                break;

            case EVO_TRADE_ITEM: // group that prints item as the parameter
            case EVO_USE_ITEM:
            case EVO_USE_ITEM_MALE:
            case EVO_USE_ITEM_FEMALE:
            case EVO_USE_ITEM_DAY:
            case EVO_USE_ITEM_NIGHT:
                for (i = 0; i <= elementnum; i++)
                    fgets(textfromfile, BUFF_SIZE, itemlist);
                strtok(textfromfile, "\n");
                fseek(itemlist, 0, SEEK_SET);

                printf("%s, ", textfromfile);
                break;

            case EVO_KNOWS_MOVE: // group that prints attack as the parameter
                for (i = 0; i <= elementnum; i++)
                    fgets(textfromfile, BUFF_SIZE, movelist);
                strtok(textfromfile, "\n");
                fseek(movelist, 0, SEEK_SET);

                printf("%s, ", textfromfile);
                break;

            case EVO_MON_IN_PARTY: // group that prints mon as the parameter
                for (i = 0; i <= elementnum; i++)
                    fgets(textfromfile, BUFF_SIZE, monlist);
                strtok(textfromfile, "\n");
                fseek(monlist, 0, SEEK_SET);

                printf("%s, ", textfromfile);
                break;

            }

            // EVOLUTION TARGET

            fgets(textfromfile, 4, source);
            elementnum = strtol(textfromfile, NULL, 0x10);
            fgets(textfromfile, 4, source);
            elementnum |= strtol(textfromfile, NULL, 0x10) << 8;

            for (i = 0; i <= elementnum; i++)
                fgets(textfromfile, BUFF_SIZE, monlist);
            strtok(textfromfile, "\n");
            fseek(monlist, 0, SEEK_SET);

            printf("%s\n", textfromfile);

        }

        fgets(textfromfile, 4, source);
        fgets(textfromfile, 4, source);

        printf("    terminateevodata\n\n");

        monnum++;
    }

    fclose(source);
    fclose(monlist);
    fclose(itemlist);
    fclose(evolist);

    return 0;
}
