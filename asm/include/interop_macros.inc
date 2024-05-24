.ifndef GUARD_INTEROP_MACROS
.set GUARD_INTEROP_MACROS, 0

// this file should not be included by armips directly, as these are for normal assemblers to conform to armips syntax

.macro .definelabel arg, value
    .ifndef \arg
    .set \arg, \value
    .endif
.endm

.macro .endmacro
    .endm
.endmacro

.equ FALSE, (0)
.equ TRUE, (1)


.endif
