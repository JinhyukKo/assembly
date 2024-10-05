# assembly
## Assembler
as -o hello.o hello.s

## Linker
ld -o app app.o -e _start

## Execute
./app
