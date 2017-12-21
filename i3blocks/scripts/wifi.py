#!/usr/bin/env python3

import subprocess

wifi = subprocess.check_output(["nmcli"],universal_newlines=True)

device = wifi.split(": ")[0]
if wifi.split(": ")[1].split(" ")[0] == "connected":
    ssid = wifi.split(": ")[1].split(" ")[2].split("\n")[0]
    if wifi.split("\n")[2].split(" ")[0].lstrip() == "wifi":
        print ("\uf1eb" + "  " + ssid)
