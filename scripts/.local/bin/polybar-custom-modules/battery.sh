#!/bin/sh

switch=0
sleep_pid=0

function toggle() {
    switch="$(((switch + 1) % 2))"

    if [ "$sleep_pid" -ne 0 ]; then
        kill "$sleep_pid" >/dev/null 2>&1
    fi
}


# The `apci` command gives time in '%H:%M:%S' format. This function simplifies
# the format removing the zero-padding and only show secons when there are no
# hour or minutes left:
function format_time() {
    acpi_time="$1"

    local acpi_h=$((10#"$(echo $acpi_time | cut -d ':' -f 1)"))
    local acpi_m=$((10#"$(echo $acpi_time | cut -d ':' -f 2)"))
    local acpi_s=$((10#"$(echo $acpi_time | cut -d ':' -f 3)"))

    [ "$acpi_h" -gt 0 ] && local h="${acpi_h}h"
    [ "$acpi_m" -gt 0 ] && local m="${acpi_m}m"
    [ "$acpi_s" -gt 0 ] && local s="${acpi_s}s"

    [ -n "$h" ] && [ -n "$m" ] && echo "$h $m" && return
    [ -n "$h" ] && [ -z "$m" ] && echo "$h" && return
    [ -z "$h" ] && [ -n "$m" ] && echo "$m" && return
    [ -z "$h" ] && [ -z "$m" ] && echo "$s" && return
}


function show() {
    ac_on="$(cat /sys/class/power_supply/AC/online)"
    capacity="$(cat /sys/class/power_supply/BAT0/capacity)"
    time_remaining="$(acpi | cut -d ',' -f 3 | cut -d ' ' -f 2)"

    what_to_show="$capacity%"
    [ "$1" = 'time' ] && what_to_show="$(format_time $time_remaining)"

    if [ "$ac_on" -eq 1 ] && [ -n "$time_remaining" ]; then
        echo "󰂄 $what_to_show"
    elif [ "$ac_on" -eq 1 ] && [ -z "$time_remaining" ]; then
        echo "󰂄 FULL"
    else
        if (( "$capacity" == 0 )); then
            echo "󰂎 $what_to_show"
        elif (( "$capacity" >= 1 && "$capacity" <= 10 )); then
            echo "󰁺 $what_to_show"
        elif (( "$capacity" >= 11 && "$capacity" <= 20 )); then
            echo "󰁻 $what_to_show"
        elif (( "$capacity" >= 21 && "$capacity" <= 30 )); then
            echo "󰁼 $what_to_show"
        elif (( "$capacity" >= 31 && "$capacity" <= 40 )); then
            echo "󰁽 $what_to_show"
        elif (( "$capacity" >= 41 && "$capacity" <= 50 )); then
            echo "󰁾 $what_to_show"
        elif (( "$capacity" >= 51 && "$capacity" <= 60 )); then
            echo "󰁿 $what_to_show"
        elif (( "$capacity" >= 61 && "$capacity" <= 70 )); then
            echo "󰂀 $what_to_show"
        elif (( "$capacity" >= 71 && "$capacity" <= 80 )); then
            echo "󰂁 $what_to_show"
        elif (( "$capacity" >= 81 && "$capacity <= 90" )); then
            echo "󰂂 $what_to_show"
        elif (( "$capacity" >= 91 )); then
            echo "󰁹 $what_to_show"
        fi
    fi
}


trap "toggle" USR1

while true; do
    if [ "$switch" -eq 0 ]; then
        show
    else
        show 'time'
    fi
    sleep 3 &
    sleep_pid="$!"
    wait
done
