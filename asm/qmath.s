.text
.align 2
.thumb

.thumb_func
.global QMul_RoundUp
QMul_RoundUp:
    @ Multiply r0 by r1 and return the result in r0.
    @ Assumes that r1 is in Q4.12 format.
    @ Rounds up at 0.5.
    mov     r3, #1          @ store 2048 (0.5) in r3
    lsl     r3, r3, #11

    b       QMul            @ go to core mul routine

.thumb_func
.global QMul_RoundDown
QMul_RoundDown:
    @ Multiply r0 by r1 and return the result in r0.
    @ Assumes that r1 is in Q4.12 format.
    @ Rounds down at 0.5.
    mov     r3, #1          @ store 2047 (0.5) in r3
    lsl     r3, r3, #11
    sub     r3, r3, #1

    @ fall-through to core mul routine

QMul:
    mov     r2, #1          @ store 4096 (1.0) in r2
    lsl     r2, r2, #12

    cmp     r1, r2          @ if r1 == 4096, return early (identity)
    beq     QMul_Return

    mul     r0, r0, r1      @ implicit shift here
    add     r0, r0, r3      @ add the rounding factor
    lsr     r0, #12         @ undo the implicit shift

QMul_Return:
    bx      lr
