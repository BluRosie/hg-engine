import os
import subprocess
import shutil
import struct
import sys
import json


fileblock = json.load(open("build/sdat/FileBlock.json", "rb+"))
infoblock = json.load(open("build/sdat/InfoBlock.json", "rb+"))



#########################
####### FILEBLOCK #######
#########################

totalcries = len(os.listdir("sound/cries")) + 50

species0 = 1
species1 = 1

SEQ_startindex = 0
SEQ_init = 0
BANK_startindex = 0
BANK_init = 0
WAVARC_startindex = 0
WAVARC_init = 0

entrynum = 0

#        {
#            "name": "BANK_PV001.sbnk",
#            "type": "BANK",
#            "MD5": "0b957e3b8d070b82138ba5e79ac59bca"
#        },

#        {
#            "name": "WAVE_ARC_PV001.swar",
#            "type": "WAVARC",
#            "MD5": "1f3678644735b1319fd0f07a99335e38",
#            "subFile": [
#                "00.swav"
#            ]
#        },

for entry in fileblock["file"]:
    if ("SEQ" in entry["type"] and SEQ_init == 0):
        SEQ_startindex = entrynum
        SEQ_init = 1

    if ("BANK" in entry["type"] and BANK_init == 0):
        BANK_startindex = entrynum
        BANK_init = 1

    if ("WAVARC" in entry["type"] and WAVARC_init == 0):
        WAVARC_startindex = entrynum
        WAVARC_init = 1

## code to unify the banks
#    if ("BANK_PV" in entry["name"] and "SKY" not in entry["name"]):
#        entry["name"] = "BANK_PV{:03d}.sbnk".format(species0)
#        species0 = species0 + 1
#
#        if (species0 == 494):
#            species0 += 50

# delete entry if not BANK_PV001 or BANK_PV002
    if ("BANK_PV001" not in entry["name"] and "BANK_PV002" not in entry["name"] and "BANK_PV" in entry["name"]):
        fileblock["file"].remove(entry)


# need to add in wave_arc's tho
    if ("WAVE_ARC_PV" in entry["name"] and "SKY" not in entry["name"]):
        entry["name"] = "WAVE_ARC_PV{:03d}.swar".format(species1)
        species1 = species1 + 1

        if (species1 == 494):
            species1 += 50

    entrynum = entrynum + 1

#        {
#            "name": "BANK_PV001.sbnk",
#            "type": "BANK",
#            "MD5": "0b957e3b8d070b82138ba5e79ac59bca"
#        },

## append new sbnk to the end of the sbnks.  remove code to not fight sbnk
#if (species0 <= 544):
#    for n in range(544, totalcries):
#        json_data = {}
#
#        json_data["name"] = "BANK_PV{:03d}.sbnk".format(n)
#        json_data["type"] = "BANK"
#        json_data["MD5"] = "0b957e3b8d070b82138ba5e79ac59bca"
#        fileblock["file"].insert(WAVARC_startindex, json_data)
#        WAVARC_startindex = WAVARC_startindex + 1


#        {
#            "name": "WAVE_ARC_PV001.swar",
#            "type": "WAVARC",
#            "MD5": "1f3678644735b1319fd0f07a99335e38",
#            "subFile": [
#                "00.swav"
#            ]
#        },

# append new wave arc
if (species1 <= 544):
    for n in range(544, totalcries):
        json_data = {}

        json_data["name"] = "WAVE_ARC_PV{:03d}.swar".format(n)
        json_data["type"] = "WAVARC"
        json_data["MD5"] = "1f3678644735b1319fd0f07a99335e38"
        json_data["subFile"] = [ "00.swav" ]
        fileblock["file"].insert(len(fileblock["file"]), json_data)
        #print(json_data)

with open("build/sdat/FileBlock.json", "w") as savefile:
    json.dump(fileblock, savefile)





#########################
####### INFOBLOCK #######
#########################

species0 = 1
species1 = 1

entrynum = 0

#        {
#            "name": "BANK_PV001",
#            "fileName": "BANK_PV001.sbnk",
#            "unkA": 0,
#            "wa": [
#                "WAVE_ARC_PV001",
#                "",
#                "",
#                ""]
#        }

#        {
#            "name": "WAVE_ARC_PV001",
#            "fileName": "WAVE_ARC_PV001.swar",
#            "unkA": 0
#        }

for entry in infoblock["bankInfo"]:
# code to delete the entries
    if ("BANK_PV001" not in entry["name"] and "BANK_PV002" not in entry["name"] and "BANK_PV" in entry["name"]):
        entry["name"] = ""
        entry["fileName"] = ""
        entry["unkA"] = ""
        entry["wa"] = ""

## code to add the entries
#    if ("BANK_PV" in entry["name"] and "SKY" not in entry["name"]):
#        entry["name"] = "BANK_PV{:03d}".format(species0)
#        entry["fileName"] = "BANK_PV{:03d}.sbnk".format(species0)
#        entry["unkA"] = 0
#        entry["wa"] = [ "WAVE_ARC_PV{:03d}".format(species0), "", "", "" ]
#        species0 = species0 + 1
#
#        if (species0 == 494):
#            species0 += 50
#
#if (species0 <= 544): # hasn't already been expanded
#    for n in range(544, totalcries):
#        json_data = {}
#
#        json_data["name"] = "BANK_PV{:03d}".format(n)
#        json_data["fileName"] = "BANK_PV{:03d}.sbnk".format(n)
#        json_data["unkA"] = 0
#        json_data["wa"] = [ "WAVE_ARC_PV{:03d}".format(n), "", "", "" ]
#        
#        infoblock["bankInfo"].insert(len(infoblock["bankInfo"]), json_data)

entrynum = 0

for entry in infoblock["wavarcInfo"]:
    if ("WAVE_ARC_PV" in entry["name"] and "SKY" not in entry["name"]):
        entry["name"] = "WAVE_ARC_PV{:03d}".format(species1)
        entry["fileName"] = "WAVE_ARC_PV{:03d}.swar".format(species1)
        entry["unkA"] = 0
        species1 = species1 + 1

        if (species1 == 494):
            species1 += 50

if (species1 <= 544): # hasn't already been expanded
    for n in range(544, totalcries):
        json_data = {}

        json_data["name"] = "WAVE_ARC_PV{:03d}".format(n)
        json_data["fileName"] = "WAVE_ARC_PV{:03d}.swar".format(n)
        json_data["unkA"] = 0
        
        infoblock["wavarcInfo"].insert(len(infoblock["wavarcInfo"]), json_data)


with open("build/sdat/InfoBlock.json", "w") as savefile:
    json.dump(infoblock, savefile)
