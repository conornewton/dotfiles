#!/bin/sh

icon=
ssid=$(wpa_cli status | sed -n 's/^ssid=//p')
echo "$icon $ssid"

