#!/bin/bash
# shell scipt to prepend i3status with more stuff

function append_data() {
    if [ -z "$1" ]; then
	echo "$2"
    else
	echo "$1,$2"
    fi
}

i3status --config ~/.config/i3status/config | while :
do
    read line

    data=""

    kb_layout_file=/home/cosmas375/.config/i3status/xkblayout-state/xkblayout-state
    if [ -f $kb_layout_file ]; then
        kb_layout=$($kb_layout_file print \%n)
        kb_layout_data="{ \"full_text\": \"Layout: $kb_layout\"}"

	data=$(append_data "$data" "$kb_layout_data")
    fi

    brightness_file=/sys/class/backlight/intel_backlight/brightness
    if [ -f $brightness_file ]; then
    	brightness=$(cat $brightness_file)
        max_brightness=$(cat /sys/class/backlight/intel_backlight/max_brightness)
        brightness_percent=$((brightness * 100 / max_brightness))
        brightness_data="{ \"full_text\": \"Brightness: $brightness_percent%\"}"

	data=$(append_data "$data" "$brightness_data")
    fi

    battery_file=/sys/class/power_supply/BAT0/capacity
    if [ -f $battery_file ]; then
    	battery=$(cat $battery_file)
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

	data=$(append_data "$data" "$battery_data")
    fi

    if [ ! -z "$data" ]; then
	data="$data,"
    fi

    echo "${line/[/[$data}" || exit 0
done
