.global _start             // Provide program starting address to linker
.align 2

output_string:      .asciz  "the result of 1+1 is :\n"

// Setup the parameters to print hello world
// and then call Linux to do it.
_start: mov X0, #1     // 1 = StdOut
        adr X1, output_string // string to print
        mov X2, #23   // length of our string
        mov X16, #4     // MacOS write system call
        svc 0     // Call linux to output the string

// Setup the parameters to exit the program
// and then call Linux to do it.

        mov     X0, #0      // Use 0 return code
        mov     X16, #1     // Service command code 1 terminates this program
        svc     0           // Call MacOS to terminate the program


