# Download OS installtion file
Download Ubuntu16.04 Desktop iso file. Search web with "Ubuntu download"
(Memo) There are many distributions of Linux, and each distribution
may have server version and desktop version.
Ubuntu LTS (16.04) desktop is a first choice, which contains many
softwares and most popular distribution.
Please try Ubuntu server version (almost minimum configuration) and
Cent OS which is also popular distribution.

# Burn OS image to USB flash memory
Copy the iso file image to usb flash memory using dd command (There is a compatible software for Windows). **Caution !!! BE CARE not to mistake if= and of= options (especially of=) of dd command.**

## Attach usb flash memory to the computer

## Confirm the device name of the flash memory using df command.
External HDD is mounted at /media, in this case /dev/sdb shall be
specified as of= parameter. /dev/sdb is a raw device, /dev/sdb1 is
a first partition of /dev/sdb.

````
    kato@katoB502E:~$ df
    Filesystem     1K-blocks    Used Available Use% Mounted on
    udev             1920528       0   1920528   0% /dev
    tmpfs             388344    6148    382196   2% /run
    /dev/sda5      113727112 7902608 100024416   8% /
    tmpfs            1941704   94028   1847676   5% /dev/shm
    tmpfs               5120       4      5116   1% /run/lock
    tmpfs            1941704       0   1941704   0% /sys/fs/cgroup
    /dev/sda1         262144   29260    232884  12% /boot/efi
    tmpfs             388344      68    388276   1% /run/user/1000
    /dev/sdb1        1517760 1517760         0 100% /media/kato/usbhdd
````

## Execute dd command (copy iso image to flash memory)

````
    kato@katoB502E:~/Downloads$ dd if=./Ubuntu16.04-2.iso of=/dev/sdb bs=1M
````

# Prepare target machine

## Preserve Linux installtion partition space
If dual-boot with Windows is required back up data,reduce Windows
HDD space or erase unused partition to preserve space for Linux
(100GB or more)
[How to Dual Boot Linux on Your PC](https://www.howtogeek.com/214571/how-to-dual-boot-linux-on-your-pc/)

## Change BIOS setting so that the machine will boot from flash memory.
If the HDD is formatted with MBR (without UEFI), do not boot from **UEFI USB Flash**, but **USB Flash**. Linux installation USB assumes that HDD is UEFI when the flash is booted as **UEFI Flash**.

# Boot from flash memory and follow instruction

# Update software to current level
(Memo) apt, aptitude and apt-get are almost identical command.
Always use apt if system supports it.
Please try to update as much as possible. Keeping software up to    
date is a key for security.

````
    kato@katoB502E:~$ sudo apt update; sudo apt -y upgrade
````

# Customize and install necessary software
1. Unlock unnecessary icons from Laucher
1. vim-gtk `sudo apt install vim-gtk` (there are several version of vim, for Ubuntu 16.04 vim-gtk seems to be good)
idle3
1. ssh server `sudo apt install openssh-server` (ssh client is installed by default)
1. nfs client `shdo apt install nfs-common`
1. Chromium browser  `sudo apt install chromium-browser` (optional)
1. National language support (Burmese)
    1. **System setting** -> **Langueage support** -> (select Burmese if not Install)
    1. **System setting** -> **Keyboard** -> *Text Input* -> '+' -> add Burmese
    1. Change "Next source" and "Prev Source" as required

# Filesystem Hierarchy Standard
For detail, please search with above keyword.
````
    /home/user-name Each user's home directory
    /media/user-name removable media
    /dev/shm RAM disk

    /etc System definition file
    /var/log log files. (syslog etc)
    /proc, /sys System informaion (virtual file)
    /dev virtual file of device driver
````
