# Ubuntu customization
It's not necessary to do everything. There are many good tips on internet, please find and try by yourself.

## Language support

    - System config -> Language support -> Install (Check Burmese)
    - System config -> Text entry -> '+' (Select Burmese)
    - Some applications(such as Office) can change fonts. If Burmese character is not displayed properly, specify **Padauk** font.

## Desktop background

## Clock

## If Clock is not correct between Windows and Linux at dual boot environment
The reason of this condition is because Linux keeps UTC internally, but Windows uses local time. 
Please choose one of the below (not **BOTH!**)

    - In order to fix at Linux: `sudo timedatectl set-local-rtc true`
    - In order to fix at Windows <http://lifehacker.com/5742148/fix-windows-clock-issues-when-dual-booting-with-os-x>

## Shutdown time
Shutdown time can be shortened by changing /etc/systemd/system.conf file.

## Homework
Please find useful customization on the internet, and introduce it in Blog/SNS in Burmese.
