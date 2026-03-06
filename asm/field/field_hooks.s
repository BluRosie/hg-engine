.text
.align 2
.thumb

.global DetermineRockSmashItem_hook
DetermineRockSmashItem_hook:
push {r1-r3}
mov r1, r4
bl DetermineRockSmashItem
pop {r1-r3}
mov r2, r0 // move result to where it's expected to be

ldr r0, =0x02204E66 | 1
bx r0
