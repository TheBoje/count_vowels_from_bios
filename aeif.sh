#!/bin/bash

if [[ -z "$1"  || "$1" == "-h" || "$1" == "--help" ]]
then
	echo "usage: `basename $0` '<your sentence>'"
	exit 1
fi

if [ ${#1} -lt 70 ]
then
	sed "s/HELLO/$REPLY/g" main_ref.c > main.c
	echo -e "Compiling..."
	make build
	echo -e "\033[32mCompilation done!\033[0m"
	echo -e "\033[7;31mWARNING: if you mess up this next command, your whole disk is gone.\033[0m"
	echo "Now run 'sudo dd if=main.img of=/dev/sdX', and replace 'sdX' by the identifier of your USB key."
	echo "Use 'lsblk' to see your disks identifiers (eg. /dev/sdc)."
	echo "When you are done, shutdown your computer, open your BIOS and boot from your USB key."
else
	echo "Sentence too long, please use fewer characters."
fi
