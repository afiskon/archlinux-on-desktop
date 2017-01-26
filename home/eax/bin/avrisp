#!/usr/bin/env python3

import subprocess
import sys

def usage():
    print("Usage: " + sys.argv[0] + " <dump|upload|info|set-fuses> [fuses-name]")
    print("Possible [fuses-name] values: arduino, atmega328p-1mhz, atmega328p-8mhz")
    print("Hint: to disassemble dumped flash use `avr-objdump -D -m avr2 flash.hex`")
    sys.exit(1)

if len(sys.argv) < 2:
    usage()

programmer = 'avrisp'
device = 'm328p'

avrdude = ( 'avrdude -C ' +
  '~/opt/arduino/hardware/tools/avr/etc/avrdude.conf ' +
  '-P /dev/ttyUSB0 -b 19200 -c ' + programmer + ' -p ' + device + ' -v ' )

opt = sys.argv[1]

if opt == "dump":
    cmd = avrdude + "-D -U flash:r:flash.hex:i"
elif opt == "upload":
    cmd = avrdude + "-e -U flash:w:main.hex -U lock:w:0x0F:m"
elif opt == "info":
    cmd = avrdude + "-D"
elif opt == "set-fuses":
    fuses_name = (sys.argv + [""])[2]
    if fuses_name == "arduino":
        cmd = avrdude + "-D -U efuse:w:0x05:m -U hfuse:w:0xDE:m -U lfuse:w:0xFF:m"
    elif fuses_name == "atmega328p-1mhz":
        cmd = avrdude + "-D -U efuse:w:0x07:m -U hfuse:w:0xD9:m -U lfuse:w:0x62:m"
    elif fuses_name == "atmega328p-8mhz":
        cmd = avrdude + "-D -U efuse:w:0x07:m -U hfuse:w:0xD9:m -U lfuse:w:0xE2:m"
    else:
        usage()
else:
    usage()

subprocess.call(cmd, shell=True)
