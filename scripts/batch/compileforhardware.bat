tools\armips asm\antipiracy.s -equ HARDWARE 1
tools\armips asm\patchoutarm9compression.s
tools\armips asm\y9.s
tools\ndstool -c patched.nds -9 filesys\arm9.bin -7 filesys\arm7.bin -y9 filesys\y9.bin -y7 filesys\y7.bin -d filesys\data -y filesys\overlay -t filesys\banner.bin -h filesys\header.bin
tools\updatecrc patched.nds