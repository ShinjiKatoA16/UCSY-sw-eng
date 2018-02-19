# SPI and I2C of Raspberry Pi

SPI(Serial Peripheral Interface) and I2C(Inter-Integrated Circuit) are widely used to communicate with peripherals.
Both Raspberry Pi and Arduino support SPI and I2C.


|Characteristic| SPI | I2C |
|-----|-----|-----|
|Number of Signal Line|3(MOSI, MISO,SCLK)+n(Slave Select)|2(SDA, SCL)|
|Max Speed|Up to 125MHz(SoC spec)|Up to 3.4MHz(400KHz)?|
|Max Device|Number of SS(2 for Rasp Pi)|112 (actual limit: Capacitance)|
|How to select Device| SS(CE pin of Raspberry Pi)| Device ID before Command+Data|

<https://www.i2c-bus.org/addressing/>