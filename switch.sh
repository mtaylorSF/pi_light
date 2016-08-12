#!/usr/bin/env python

import RPi.GPIO as io
import sys

io.setmode(io.BCM)
pin = 23
io.setwarnings(False)
io.setup(pin, io.OUT)

if len(sys.argv) > 1:
	state = sys.argv[1]
	io.output(pin, state == 'on')

else:
	print("Usage: ")
	print(" ./switch.sh (on|off)")
