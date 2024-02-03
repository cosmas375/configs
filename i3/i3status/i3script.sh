#!/bin/bash
# shell scipt to prepend i3status with more stuff

i3status --config ~/.config/i3status/config | while :
do
    read line
    kb_layout=$(/home/cosmas375/Development/xkblayout-state/xkblayout-state print \%n)
    dat="[{ \"full_text\": \"Layout: $kb_layout\"},"
    echo "${line/[/$dat}" || exit 0
done
