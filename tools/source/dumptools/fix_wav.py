import sys
import os
import struct


"""
purpose of tool is to extend the wavs to a usable format by the ntrWavTool converter and hopefully not lose any data
"""

args = sys.argv[1:]

wavfile = open(args[0], 'rb+')
wavbytes = bytearray(wavfile.read())
wavfile.close()

if struct.unpack_from("<H", wavbytes[0x20:0x22])[0] != 1 or struct.unpack_from("<H", wavbytes[0x22:0x24])[0] != 8:
    print("This conversion will not work on" + args[0] + "!")
else:
    wavbytes[0x20] = 2
    wavbytes[0x22] = 0x10
    
    # double samplesPerBlock
    samplesPerBlock = 2 * struct.unpack_from("<H", wavbytes[0x28:0x2A])[0]
    wavbytes[0x28] = (samplesPerBlock & 0xFF00) >> 8
    wavbytes[0x29] = samplesPerBlock & 0xFF

    wavbyteslength = len(wavbytes)
    for i in range(0x40, (wavbyteslength-0x40)*2, 2):
        datatoinsert = (wavbytes[i] - 0x80) << 8
        wavbytes.insert(i, 0)
        wavbytes[i+1] = (datatoinsert & 0xFF00) >> 8
        wavbytes[i] = datatoinsert & 0xFF


    # double file size
    fileSize = len(wavbytes)
    wavbytes[0x4] = (fileSize & 0xFF00) >> 8
    wavbytes[0x5] = fileSize & 0xFF

    wavfile = open(args[1], 'wb')
    wavfile.write(wavbytes)
    wavfile.close()
