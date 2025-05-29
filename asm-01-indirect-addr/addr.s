.global _start

.section .data
myvar:
    .hword 100

.section .text
_start:
    // loads the myvar address into x0
    adr x0, myvar
    // load the value containing into the x0 addr
    ldr w1, [x0]

    // exit subroutine
    mov x8, #0x5d
    mov x0, #0x37
    svc 0
