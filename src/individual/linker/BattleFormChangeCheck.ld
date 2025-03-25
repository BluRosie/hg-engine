/* Overlay 139 */
OUTPUT_ARCH(arm)
MEMORY {

        rom     : ORIGIN = 0x023C2400, LENGTH = 0x3C00
        ewram   : ORIGIN = 0x023C2400, LENGTH = 0x3C00
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
