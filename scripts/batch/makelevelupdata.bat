mkdir a033
tools\armips data\levelupdata.s
tools\narchive create filesys\data\a\0\3\3 a033 -nf
rmdir /q /s a033
tools\armips asm\levelup.s