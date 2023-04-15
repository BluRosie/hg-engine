import os.path
from os import listdir
from os.path import isfile, join, isdir
import sys


def sorter(e):
    return int(e.split('.')[0])


def main():
    rawtext = sys.argv[1]
    onlydirs = [f for f in listdir(rawtext) if isdir(join(rawtext, f))]
    for dir in onlydirs:
        process_text(os.path.join(rawtext, dir))


def process_text(folder):
    if isfile(folder):
        return
    onlyfiles = [f for f in listdir(folder) if isfile(join(folder, f))]
    onlyfiles.sort(key=sorter)
    with open(folder + '.txt', 'w') as out:
        for file in onlyfiles:
            with open(os.path.join(folder, file), 'r') as infile:
                out.write(infile.read() + '\n')


if __name__ == '__main__':
    main()