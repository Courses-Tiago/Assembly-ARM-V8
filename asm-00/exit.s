// It is an entry point to the linker
.global _start

// Text section of the executable
.section .text

_start:
    // exit syscall number is 0x5d (93) according to the Linux table
    mov x8, #0x5d
    // Error code for exit syscall arg0, it can be any value
    mov x0, #0x37
    svc 0
