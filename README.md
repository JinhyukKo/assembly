# assembly language practice in M1 ARM Architecture

## Folders
1. Hello : print "hello world"
2. Arith : 1+1=2

## Assembler
```
as -o hello.o hello.s
```

## Linker
```
ld -o app app.o -e _start
```

## Execute
```
./app
```
