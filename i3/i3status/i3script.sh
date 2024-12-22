#!/bin/bash
# shell scipt to prepend i3status with more stuff

i3status --config ~/.config/i3status/config | while :
do
    read line

    kb_layout=$(/home/cosmas375/.config/i3status/xkblayout-state/xkblayout-state print \%n)
    kb_layout_data="{ \"full_text\": \"Layout: $kb_layout\"}"

    brightness=$(cat /sys/class/backlight/intel_backlight/brightness)
    max_brightness=$(cat /sys/class/backlight/intel_backlight/max_brightness)
    brightness_percent=$((brightness * 100 / max_brightness))
    brightness_data="{ \"full_text\": \"Brightness: $brightness_percent%\"}"

    # TODO: check for battery
    battery=$(cat /sys/class/power_supply/BAT0/capacity)
    if [[ $battery -lt 10 ]]
    then
        battery_color='#CA1F34'
    elif [[ $battery -lt 20 ]]
    then
        battery_color='#DD6000'
    elif [[ $battery -lt 40 ]]
    then
        battery_color='#F1BA05'
    elif [[ $battery -lt 60 ]]
    then
        battery_color='#FAE50D'
    elif [[ $battery -lt 80 ]]
    then
        battery_color='#99D973'
    else
        battery_color='#53C296'
    fi
    battery_data="{ \"full_text\": \"Battery: $battery\", \"color\": \"$battery_color\"}"

    data="[$kb_layout_data,$battery_data,$brightness_data,"

    echo "${line/[/$data}" || exit 0
done
