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
```
    - It's because system update is executing background
        + background process can be killed manually
            - `ps ax | grep apt` commmand shows apt related process, last one isa grep command, so ignore that
            - Terminate those process with kill command `kill -9 xxxx xxxx xxxx'
        + background update can be disabled, but not recommended for non-experts.
