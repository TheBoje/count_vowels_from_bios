build: entry.S main.c link.ld
	@set -eux
	@as --32 -o entry.o entry.S
	@gcc -c -ggdb3 -m16 -ffreestanding -fno-PIE -nostartfiles -nostdlib -o main.o -std=c99 main.c
	@ld -m elf_i386 -o main.elf -T link.ld entry.o main.o
	@objcopy -O binary main.elf main.img

clean:
	@rm -f entry.o main.o main.elf main.img main.c
