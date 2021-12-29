#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#define BUFF_SIZE 100

int main(int argc, char **argv)
{
    const char *sourcename = NULL, *targetname = NULL, *monlistname = NULL;
    char textfromfile[BUFF_SIZE];
    int i, elementnum, monnum = 0;
    FILE *source, *target, *monlist;

    if (argc != 4) // the simple error handling part
    {
        fprintf(stderr, "This generates the mon level data from a text file containing all the constants.");
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

    targetname = argv[2];

    if (strcmp(targetname, "-") == 0)
    {
        fprintf(stderr, "Please specify a file with the move names.\n");
        fclose(source);
        return 1;
    }
    else
    {
        target = fopen(targetname, "r+");

        if (!target)
        {
            fprintf(stderr, "Could not find %s\n", sourcename);
            return 1;
        }
    }

    monlistname = argv[3];

    if (strcmp(monlistname, "-") == 0)
    {
        fprintf(stderr, "Please specify a file with the mon names.\n");
        fclose(source);
        fclose(target);
        return 1;
    }
    else
    {
        monlist = fopen(monlistname, "r+");

        if (!monlist)
        {
            fprintf(stderr, "Could not find %s\n", sourcename);
            return 1;
        }
    }

    // set up initial entry
    fgets(textfromfile, BUFF_SIZE, monlist);
    strtok(textfromfile, "\n");
    printf("levelup %s\n", textfromfile);

    // get the number from each successive line
    while (fgets(textfromfile, 10, source) != NULL)
    {
        elementnum = strtol(textfromfile, NULL, 0x10);
        //printf("elementnum = %x\n", elementnum);

        if (elementnum == 0) continue;

        for (i = 0; i <= (elementnum & 0x1FF); i++)
            fgets(textfromfile, BUFF_SIZE, target);
        strtok(textfromfile, "\n");

        // set up the next mon
        if (elementnum == 0xFFFF)
        {
            printf("    terminatelearnset\n\n");
            fgets(textfromfile, BUFF_SIZE, monlist);

            strtok(textfromfile, "\n");
            printf("levelup %s\n", textfromfile);

            fseek(target, 0, SEEK_SET);
            continue;
        }
        else
            printf("    learnset %s, %d \n", textfromfile, elementnum >> 9);

        fseek(target, 0, SEEK_SET);
    }

    fclose(source);
    fclose(target);
    fclose(monlist);

    return 0;
}
