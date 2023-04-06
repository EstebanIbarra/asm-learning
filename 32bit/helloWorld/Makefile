build/helloWorld: build/helloWorld.o
	gcc -o build/helloWorld -m32 build/helloWorld.o -nostdlib -no-pie

build/helloWorld.o: src/helloWorld.asm
	mkdir build
	as src/helloWorld.asm --32 -o build/helloWorld.o

clean:
	rm -rf build