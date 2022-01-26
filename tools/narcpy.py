import sys
import os
import ndspy.narc


def format_int(val, narc_len):
    length = len(str(val))
    return '0'*(len(str(narc_len-1))-length) + str(val)


args = sys.argv[1:]

if args[0] == 'extract':
    narc = ndspy.narc.NARC.fromFile(args[1])
    if args[2] == '-o':
        if not os.path.isdir(args[3]):
            os.makedirs(args[3])
        for idx in range(len(narc.files)):
            name = os.path.join(args[3], '%s_%s' % (os.path.basename(args[1]), format_int(idx, len(narc.files))))
            data = narc.files[idx]
            with open(name, 'wb') as out:
                out.write(data)
elif args[0] == 'create':
    files = []
    for v in range(len(os.listdir(args[2]))):
        files.append(None)

    idx = 0
    for entry in sorted(os.listdir(args[2])):
        with open(os.path.join(args[2], entry), 'rb') as f:
            files[idx] = f.read()
        idx += 1

    narc = ndspy.narc.NARC.fromFilesAndNames(files=files)
    narc.endiannessOfBeginning = '>'
    narc.saveToFile(args[1])


