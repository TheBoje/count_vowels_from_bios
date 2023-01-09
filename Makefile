build: entry.S main.c link.ld
	@set -eux
	@as --32 -o entry.o entry.S
	@gcc -c -ggdb3 -m16 -ffreestanding -fno-PIE -nostartfiles -nostdlib  -fno-stack-protector -fomit-frame-pointer -ffunction-sections -fdata-sections -mpreferred-stack-boundary=2 -falign-functions=1 -falign-jumps=1 -falign-loops=1 -fno-unwind-tables -fno-asynchronous-unwind-tables -fno-math-errno -fno-unroll-loops -fmerge-all-constants -fno-ident -mfpmath=387 -mfancy-math-387 -ffast-math -Wl,--hash-style=gnu -Wl,--build-id=none -o main.o -std=c99 main.c
	@ld -m elf_i386 -o main.elf --build-id=none -s -T link.ld entry.o main.o
	@objcopy -O binary main.elf main.img

clean:
	@rm -f entry.o main.o main.elf main.img
