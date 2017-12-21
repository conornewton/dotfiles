#!/usr/bin/env python3

import subprocess

#requires font awesome and acpi

BATTERY_FULL = "\uf240"
BATTERY_THREE_QUARTERS = "\uf241"
BATTERY_HALF = "\uf242"
BATTERY_QUARTER = "\uf243"
BATTERY_EMPTY = "\uf244"
BATTERY_CHARGING = "\uf1e6"

acpi = subprocess.check_output(['acpi'],universal_newlines=True)

status = acpi.split(": ")[1].split(", ")[0]
percentage = acpi.split(": ")[1].split(", ")[1]

if status == "Full":
    print(BATTERY_FULL + "  " + percentage)
elif status == "Discharging":
    charge = int(percentage[:-1])
    if charge > 85:
        print(BATTERY_FULL + "  " +percentage)
    elif charge > 60:
        print(BATTERY_THREE_QUARTERS + "  " + percentage)
    elif charge > 35:
        print(BATTERY_HALF + "  " +percentage)
    elif charge > 15:
        print (BATTERY_QUARTER + "  " + percentage)
    else:
        print(BATTERY_EMPTY + "  " + percentage)
elif status == "Charging":
    print(BATTERY_CHARGING + "  " +percentage)

