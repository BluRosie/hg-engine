import sys
import os
import struct
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

    narcfile = open(args[1], 'rb+')
    narcbytes = bytearray(narcfile.read())
    narcfile.close()
    
    FNTB_offset = narcbytes.find("BTNF".encode())
    
    #narcbytes[8] = narcbytes[8] - 4
    dataoffset = struct.unpack_from("<I", narcbytes[8:12])[0] - 4
    data = (dataoffset.to_bytes(4, 'little'))
    narcbytes[8:12] = data
    
    narcbytes[FNTB_offset+4] = 0x10;
    narcbytes[FNTB_offset+8] = 0x4;
    del narcbytes[FNTB_offset+0x10:FNTB_offset+0x14]
    
    # filler bytes are 0xFF in heart gold narcs
    fileOffset = FNTB_offset + 0x18 # assume empty FNTB
    for i in range(0x1C, FNTB_offset, 8):
        currSize = struct.unpack_from("<I", narcbytes[i+4:i+8])[0]
        currMargin = currSize % 4
        if ((currMargin) != 0):
            for j in range(0, 4-currMargin):
                narcbytes[fileOffset + currSize + j] = 0xFF

    narcfile = open(args[1], 'wb')
    narcfile.write(narcbytes)
    narcfile.close()
