# Ubuntu customization
It's not necessary to do everything. There are many good tips on internet, please find and try by yourself.

## Language support

    - System setting -> Language support -> Install Langueages (Check Burmese)
    - System setting -> Text entry -> '+' (Select Burmese)
    - Some applications(such as Office) can change fonts. If Burmese character is not displayed properly, specify **Padauk** font.

## Desktop background
'Right Click' -> 'Change Desktop Background'

## Clock
    - System setting -> Time & Date -> Clock
    - System setting -> Language support -> Regional Formats

## Launcher
    - Unnecesary application/folders can be removed from Unity Laucher. 'Right Click' -> 'Unlock from Launcher'. Windows folders can be removed from there, they can be accessed from Nautrius(Files) application.
    - Often used application such as Terminal, can be locked on Launcher.

## If Clock is not correct between Windows and Linux at dual boot environment
The reason of this condition is because Linux keeps UTC internally, but Windows uses local time. 
Please choose one of the below (not **BOTH!**)

    - In order to fix at Linux: `sudo timedatectl set-local-rtc true`
    - In order to fix at Windows <http://lifehacker.com/5742148/fix-windows-clock-issues-when-dual-booting-with-os-x>

## Shutdown time
Shutdown time can be shortened by changing /etc/systemd/system.conf file.

## Homework
If you find useful customization on the internet, please introduce it in Blog/SNS in Burmese.
