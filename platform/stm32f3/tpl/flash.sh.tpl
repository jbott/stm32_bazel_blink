#!/bin/bash

# A script to flash a STM32F3 board using openocd. This assumes a running
# openocd server using the RTT patchset found here:
# http://openocd.zylin.com/#/c/4055/8

cat <<EOF | nc localhost 4444
reset init
program $(realpath %{hex_file})
rtt stop
rtt setup 0x20000000 4096 "SEGGER RTT"
reset run
rtt start
rttserver stop 5000
rttserver start 5000 0
exit
EOF

echo
echo
nc localhost 5000
