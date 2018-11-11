#!/bin/sh

icon=
ssid=$(wpa_cli status | sed -n 's/^ssid=//p')
ip=$(curl -s ifconfig.me)

if [ $(cat /sys/class/net/enp7s0/operstate) == "up" ]
then
    echo "ethernet ($ip)"
elif [ $(cat /sys/class/net/wlp6s0/operstate) == "up" ]
then
    echo "$icon $ssid ($ip)"
fi
