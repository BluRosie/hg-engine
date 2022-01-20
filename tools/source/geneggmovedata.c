#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#define BUFF_SIZE 100

int main(int argc, char **argv)
{
    const char *sourcename = NULL, *monlistname = NULL, *movelistname = NULL;
    char textfromfile[BUFF_SIZE];
    int i, elementnum, monnum = 0;
    FILE *source, *monlist, *movelist;

    if (argc != 2) // the simple error handling part
    {
        fprintf(stderr, "This generates the egg move data from a text file containing all the constants.\n");
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

    // god damn
    while (monnum <= 507)
    {
        // set up entry
        fgets(textfromfile, 4, source);
        elementnum = strtol(textfromfile, NULL, 0x10);
        fgets(textfromfile, 4, source);
        elementnum |= strtol(textfromfile, NULL, 0x10) << 8;

        if (elementnum == 0xFFFF)
        {
            monnum = 508;
        }
        else if (elementnum >= 20000)
        {
            for (i = 0; i <= (elementnum - 20000); i++)
                fgets(textfromfile, BUFF_SIZE, monlist);
            strtok(textfromfile, "\n");
            printf("\n\neggmoveentry %s\n", textfromfile);
            fseek(monlist, 0, SEEK_SET);
        }
        else
        {
            for (i = 0; i <= elementnum; i++)
                fgets(textfromfile, BUFF_SIZE, movelist);
            strtok(textfromfile, "\n");
            printf("    eggmove %s\n", textfromfile);
            fseek(movelist, 0, SEEK_SET);
        }
    }

    printf("\nterminateeggmoves");

    fclose(source);
    fclose(monlist);
    fclose(movelist);

    return 0;
}
