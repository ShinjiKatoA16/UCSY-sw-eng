# Problem Tracking List
1. Windows7 sometimes Freezed after Linux installation  May/24/2017
    - Windows 7 is not appeared in GRUB menu
        + Condition: Linux is installed from "UEFI USB Flash memory"
        + Workaround: `sudo update-grub`
        + Result: Windows sometimes hang (Mouse and Keyboard Freeze)
    - Re-installing Linux from "USB Flash"(Not UEFI) did not work.
    - Setting BIOS boot order 1st=HDD seems to be working. (N=2)  May/30/2017
