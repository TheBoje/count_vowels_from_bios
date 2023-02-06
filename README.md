# Bad code #3 - Submission 1

# Context

Create a program to display the number of vowels contained in a string. Programming language is free of choise, efficiency and readability are not required.

## Disclamer

I, Louis Leenart, am not responsible by any means if you break your partition(s), disk(s), operating system(s), or loose data.

# BDSM - BIOS DEPENDANT STRING MATCHER

In order to launch my program to count the number of vowels in a sentence, do the following. In your favorite terminal, run:

```bash
./BDSM 'enter your sentence here'
```

Please note that the `'` are required.

Then, you can plug in an empty USB key, please note that everything on said USB key will be wiped.

You need your usb key identifier, to find it, run the following:

```bash
lsblk
```

For example, the output is:

```bash
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
sda      8:0    0 931.5G  0 disk
├─sda1   8:1    0 530.7G  0 part /home
├─sda2   8:2    0 185.5G  0 part
└─sda4   8:4    0 215.2G  0 part
sdb      8:16   0 238.5G  0 disk
├─sdb1   8:17   0   500M  0 part /boot
└─sdb2   8:18   0   238G  0 part /
sdc      8:32   1   3.8G  0 disk
```

The USB key is here `sdc`, yours may not be the same. Please run `lsblk` with and without your USB key inserted to find it.

Finally you can run, and replace `sdX` by your USB identifier, for example `sdc` :

```bash
sudo dd if=main.img of=/dev/sdX
```

The program is now loaded onto the USB key. Reboot your computer, enter the BIOS, and boot from said USB key (you may require to disable `safe boot option` or equivalent, see [this tutorial](https://www.malekal.com/comment-demarrer-ordinateur-cle-usb/) for help). Your sentence followed by the count of vowels should be printed.

# License

My submission for the third edition of the Bad code from "La click" is distributed under the DWTFYW License, see [LICENSE](LICENSE) for more details.
