#!/bin/bash

function build () {
    mkdir build
    as src/helloWorld.asm --32 -o build/helloWorld.o
    gcc -o build/helloWorld -m32 build/helloWorld.o -nostdlib -no-pie
}

if [ -d "build" ]; then
    rm -rf build
    build
else
    build
fi