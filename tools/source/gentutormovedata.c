#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#define BUFF_SIZE 100

int main(int argc, char **argv)
{
    const char *sourcename = NULL, *monlistname = NULL, *tutorlistname = NULL;
    char textfromfile[BUFF_SIZE];
    uint64_t i, j, elementnum, monnum = 0, tutordata0, tutordata1;
    FILE *source, *monlist, *tutorlist;

    if (argc != 2) // the simple error handling part
    {
        fprintf(stderr, "This generates the tutor move data from a text file containing all the constants.\n");
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

    tutorlistname = "rawdata/tutorfields.txt";

    if (strcmp(tutorlistname, "-") == 0)
    {
        fprintf(stderr, "Please specify a file with the tutor fields.\n");
        fclose(source);
        return 1;
    }
    else
    {
        tutorlist = fopen(tutorlistname, "r+");

        if (!tutorlist)
        {
            fprintf(stderr, "Could not find %s\n", tutorlistname);
            return 1;
        }
    }

    // god damn
    while (monnum <= 507)
    {
        // set up entry
        for (i = 0; i <= monnum + 1; i++)
            fgets(textfromfile, BUFF_SIZE, monlist);
        strtok(textfromfile, "\n");
        printf("tutordata %s, ", textfromfile);
        fseek(monlist, 0, SEEK_SET);

        fgets(textfromfile, 4, source);
        tutordata0 = strtol(textfromfile, NULL, 0x10);
        fgets(textfromfile, 4, source);
        tutordata0 |= (uint64_t)strtol(textfromfile, NULL, 0x10) << 8;
        fgets(textfromfile, 4, source);
        tutordata0 |= (uint64_t)strtol(textfromfile, NULL, 0x10) << 16;
        fgets(textfromfile, 4, source);
        tutordata0 |= (uint64_t)strtol(textfromfile, NULL, 0x10) << 24;
        fgets(textfromfile, 4, source);
        tutordata1 = (uint64_t)strtol(textfromfile, NULL, 0x10);
        fgets(textfromfile, 4, source);
        tutordata1 |= (uint64_t)strtol(textfromfile, NULL, 0x10) << 8;
        fgets(textfromfile, 4, source);
        tutordata1 |= (uint64_t)strtol(textfromfile, NULL, 0x10) << 16;
        fgets(textfromfile, 4, source);
        tutordata1 |= (uint64_t)strtol(textfromfile, NULL, 0x10) << 32;
        // somebody somewhere is dying

        for (i = 0; i < 64; i++)
        {
            if (i == 32)
            {
                printf("0, ");
            }
            if (i % 8 == 0)
            {
                printf("/\n                  ");
            }
            if (i < 32)
            {
                if (tutordata0 & (1 << i))
                {
                    for (j = 0; j <= i; j++)
                        fgets(textfromfile, BUFF_SIZE, tutorlist);
                    strtok(textfromfile, "\n");
                    printf("%s | ", textfromfile);
                    fseek(tutorlist, 0, SEEK_SET);
                }
            }
            else
            {
                if (tutordata1 & (1 << (i - 32)))
                {
                    for (j = 0; j <= i; j++)
                        fgets(textfromfile, BUFF_SIZE, tutorlist);
                    strtok(textfromfile, "\n");
                    printf("%s | ", textfromfile);
                    fseek(tutorlist, 0, SEEK_SET);
                }
            }
        }

//        printf("0\n\n\n", textfromfile);

        monnum++;
    }

    fclose(source);
    fclose(monlist);

    return 0;
}
