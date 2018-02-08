# GPIO of Raspberry Pi

- Number of GPIO pins: 26 (#2 to #27)
- GPIO-2 and GPIO-3 pin have internal register
- 3.3V
- Max current: 16mA per GPIO Pin, 50mA total (Need to take care of hardware design)


## GPIO command

Easiest way to check and control GPIO is a GPIO command.

- `$ man gpio` shows the usage of gpio command (refer web site for detail)
- `$ gpio readall` shows status (GPIO number is shown in BCM column)
- `$ gpio -g mode 18 out` or `$ gpio -1 mode 12 out` change pin-12(GPIO-18) to output mode
- `$ gpio -g write 18 1` turns GPIO-18(pin-12) to **ON** (3.3V)
- `$ gpio -1 write 12 0` turns pin-12(GPIO-18) to **OFF** (3.3V)
- `$ gpio -g mode 18 in` change GPIO-18 to input mode
- `$ gpio -g mode 18 up` change GPIO-18 to pull-up
- `$ gpio -g mode 18 down` change GPIO-18 to pull-down
