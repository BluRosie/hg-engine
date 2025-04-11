/* Overlay 134 */
OUTPUT_ARCH(arm)
MEMORY {

        rom     : ORIGIN = 0x021FBE60, LENGTH = 0xDD00
        ewram   : ORIGIN = 0x021FBE60, LENGTH = 0xDD00
}

SECTIONS {
        .text : {

                FILL (0xABCD)

                __text_start = . ;
                *(.init)
                *(.text)
                *(.ctors)
                *(.dtors)
                *(.rodata)
                *(.fini)
                *(COMMON)
                __text_end  = . ;

                __bss_start__ = . ;
                *(.bss)
                __bss_end__ = . ;
        _end = __bss_end__ ;
        __end__ = __bss_end__ ;
        } >rom = 0xff
}