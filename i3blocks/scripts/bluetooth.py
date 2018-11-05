#! /usr/bin/env python3

import subprocess

wifi = subprocess.check_output(["bluetoothctl"],universal_newlines=True)
print (wifi)
