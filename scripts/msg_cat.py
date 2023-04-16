import os.path
from os import listdir
from os.path import isfile, join, isdir
import sys

caps_list = ['751']


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
    caps = False
    for s in caps_list:
        if folder.endswith(s):
            caps = True
            break
    onlyfiles = [f for f in listdir(folder) if isfile(join(folder, f))]
    onlyfiles.sort(key=sorter)
    with open(folder + '.txt', 'w', encoding='utf-8') as out:
        for file in onlyfiles:
            with open(os.path.join(folder, file), 'r', encoding='utf-8') as infile:
                s = infile.read()
                if caps:
                    out.write(s.upper() + '\n')
                else:
                    out.write(s + '\n')


if __name__ == '__main__':
    main()