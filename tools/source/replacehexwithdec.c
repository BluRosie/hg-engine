#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#define BUFF_SIZE 100

int main(int argc, char **argv)
{
    const char *sourcename = NULL;
    char textfromfile[BUFF_SIZE];
    int i, elementnum;
    FILE *source;

    if (argc != 2) // the simple error handling part
    {
        fprintf(stderr, "this just takes a bunch of hex numbers and outputs their decimal equivalents\n");
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

    // get the number from each successive line
    while (fgets(textfromfile, 10, source) != NULL)
    {
        elementnum = strtol(textfromfile, NULL, 0x10);
        //printf("elementnum = %x\n", elementnum);

        printf("%d\n", elementnum);
    }

    fclose(source);

    return 0;
}
