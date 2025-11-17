import os.path
from os import listdir
from os.path import isfile, join, isdir
import sys

caps_list = ['751', '817']

article_list = ['238']

force_lengths = {
    '812': 11,
    '813': 11,
    '814': 7,
    '815': 7,
}


def sorter(e):
    return int(e.split('.')[0])


def main():
    rawtext = sys.argv[1].strip()
    onlydirs = [f for f in listdir(rawtext) if isdir(join(rawtext, f))]
    for dir in onlydirs:
        process_text(os.path.join(rawtext, dir))


def process_text(folder):
    if isfile(folder):
        return
    caps = False
    articles = False
    force_length = ''
    for s in caps_list:
        if folder.endswith(s):
            caps = True
            break
    for s in article_list:
        if folder.endswith(s):
            articles = True
            break
    for s in force_lengths.keys():
        if folder.endswith(s):
            force_length = s
            break
    onlyfiles = [f for f in listdir(folder) if isfile(join(folder, f))]
    onlyfiles.sort(key=sorter)
    with open(folder + '.txt', 'w', encoding='utf-8') as out:
        for file in onlyfiles:
            try:
                infile = open(os.path.join(folder, file), 'r', encoding='utf-8').read()
            except UnicodeDecodeError:
                # potentially try and detect it based on sys.platform.startswith('win')?
                infile = open(os.path.join(folder, file), 'r', encoding='cp1252').read()
            #with open(os.path.join(folder, file), 'r', encoding='utf-8') as infile:
            s = infile.replace('"','”').replace('\'','’').replace('`','’')
            if caps:
                s = s.upper()
            if articles:
                s = ('an ' if s.upper().startswith('A') or s.upper().startswith('E') or s.upper().startswith('I') or s.upper().startswith('O') or s.upper().startswith('U') else 'a ') + s
            if s != '':
                if force_length != '':
                    while len(s) < force_lengths[force_length]:
                        s = ' ' + s
            out.write(s + '\n')


if __name__ == '__main__':
    main()
