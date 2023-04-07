# Hello World Excercise

For the first excercise, we'll create a program that prints "Hello World!" to the terminal

## Goals

1. Learn the basic structure of an Intel syntax Assembly program
2. Learn the basic instructions used in Assembly
3. Learn about syscalls and what they're used for
4. Learn on how to build an Assembly program using `as` assembler and `gcc` compiler
5. Learn the basics of GNU's `make` while creating a Makefile

## Assembly

### Registries

### Procedures

### Instructions

### General Structure of an Assembly Program

## Build procedure

For your convenience, a Makefile is provided so that all the excercises can be easily built and tested.

### Using Bash

Although a Makefile is provided, you're free and highly encouraged to build the solutions using bash commands to understand clearly how a simple Assembly program is built.
For the instructions here, we'll be using `gcc` to link the object returned by the assembler, but you're also encouraged to try to use `ld` to learn an alternative way to link the object files and obtain a functional executable.

```shell
cd $(PROJECT_DIRECTORY)/32bit/$(EXERCISE)
# If build folder doesnt exists:
mkdir build
# Assembles our Assembly code into a Object file
as src/$(EXERCISE).asm --32 -o build/$(EXERCISE).o
# Links one or more Object files and builds an executable file
gcc -o build/$(EXERCISE) -m32 build/$(EXERCISE).o -nostdlib -no-pie
```

In the previous example we can appreciate the command `as src/$(EXERCISE).asm --32 -o build/$(EXERCISE).o` uses `as` assembler which expects several parameters:

- Assembly source: I.E. `src/helloWorld.asm`
- CPU Architecture: I.E. `--32` (32 bits)
- Output name: I.E. `-o build/helloWorld.o`

For more parameters and a better usage explanation you can always type `man as` in the terminal to access the manual for this program.

After the assembler returns the Object file we need to link this Object file(s) to build an executable, in this case we're using `gcc` with the following parameters:

- Output name: I.E. `-o build/helloWorld`
- Architecture mode: I.E. `-m32` (32 bits mode)
- Object file(s): I.E. `build/helloWorld.o`
- Compiler flags: I.E. `-nostdlib -no-pie`

For more parameters and a better usage explanation you can always type `man gcc` in the terminal to access the manual for this program.

### Using Make

The short version in which you can build the exercises in this repo is by using `make` with the following steps:

```shell
cd $(PROJECT_DIRECTORY)/32bit/$(EXERCISE)
# If build folder exists
make clean
make
```

`make` uses a file called `Makefile` with all the instructions needed to build the program automatically

## Makefile

### Target-Dependencies

### Variables

### Special Symbols
