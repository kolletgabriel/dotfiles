#!/bin/sh

capacity="$(cat /sys/class/power_supply/BAT0/capacity)"
status="$(cat /sys/class/power_supply/BAT0/status)"

if [ "$status" = 'Charging' ] || [ "$status" = 'Not charging' ]; then
    echo "󰚥 $capacity%"
else
    if (( "$capacity" == 0 )); then
        echo "󰂎 $capacity%"
    elif (( "$capacity" >= 1 && "$capacity" <= 10 )); then
        echo "󰁺 $capacity%"
    elif (( "$capacity" >= 11 && "$capacity" <= 20 )); then
        echo "󰁻 $capacity%"
    elif (( "$capacity" >= 21 && "$capacity" <= 30 )); then
        echo "󰁼 $capacity%"
    elif (( "$capacity" >= 31 && "$capacity" <= 40 )); then
        echo "󰁽 $capacity%"
    elif (( "$capacity" >= 41 && "$capacity" <= 50 )); then
        echo "󰁾 $capacity%"
    elif (( "$capacity" >= 51 && "$capacity" <= 60 )); then
        echo "󰁿 $capacity%"
    elif (( "$capacity" >= 61 && "$capacity" <= 70 )); then
        echo "󰂀 $capacity%"
    elif (( "$capacity" >= 71 && "$capacity" <= 80 )); then
        echo "󰂁 $capacity%"
    elif (( "$capacity" >= 81 && "$capacity <= 90" )); then
        echo "󰂂 $capacity%"
    elif (( "$capacity" >= 91 )); then
        echo "󰁹 $capacity%"
    fi
fi
