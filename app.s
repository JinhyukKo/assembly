.data
msg: .asciz "Hello, World!\n"

.text
.global _start

_start:
    ldr x0, =msg      ; Load the address of msg into x0
    bl  printf        ; Call printf to print the message
    mov x0, #0        ; Return code 0
    mov x8, #93       ; Exit syscall number
    svc #0            ; Make syscall to exit

