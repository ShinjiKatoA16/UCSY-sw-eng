# Problem Tracking List
1. Windows7 sometimes Freezed after Linux installation  May/24/2017
    - Windows 7 is not appeared in GRUB menu
        + Condition: Linux is installed from "UEFI USB Flash memory"
        + Workaround: `sudo update-grub`
        + Result: Windows sometimes hang (Mouse and Keyboard Freeze)
    - Re-installing Linux from "USB Flash"(Not UEFI) did not work.
    - Setting BIOS boot order 1st=HDD seems to be working. (N=2)  May/30/2017

1. Linux apt command can not be executable because of lock June/6/2017
    - apt command sometimes fails with following message
```
    $ sudo apt update
    [sudo] password for kato: 
    Reading package lists... Done
    E: Could not get lock /var/lib/apt/lists/lock - open (11: Resource temporarily unavailable)
    E: Unable to lock directory /var/lib/apt/lists/
```
    - It's because system update is executing background
        + background process can be killed manually
            - `ps ax | grep apt` commmand shows apt related process, last one isa grep command, so ignore that
```
    $ ps ax | grep apt
     2141 ?        SNl    0:00 /usr/bin/python3 /usr/sbin/aptd
     2148 ?        SN     0:00 /usr/lib/apt/methods/http
     2149 ?        SN     0:00 /usr/lib/apt/methods/http
     2151 ?        SN     0:00 /usr/lib/apt/methods/gpgv
     2289 pts/11   S+     0:00 grep --color=auto apt
```
            - Terminate those process with kill command `kill -9 xxxx xxxx xxxx`
```
    $ sudo kill -9 2141 2148 2149 2151 2297

```
            - Issue apt command again
        + background update can be disabled, but not recommended for non-experts.
