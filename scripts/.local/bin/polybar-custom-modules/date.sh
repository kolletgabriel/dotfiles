#!/bin/sh

switch=0
sleep_pid=0

function toggle() {
    switch="$(((switch + 1) % 2))"

    if [ "$sleep_pid" -ne 0 ]; then
        kill "$sleep_pid" >/dev/null 2>&1
    fi
}


trap "toggle" USR1

while true; do
    if [ "$switch" -eq 0 ]; then
        date "+󰃶 %d/%m"
    else
        date '+󰃶 %a %d %b %Y'
    fi
    sleep 1 &
    sleep_pid="$!"
    wait
done
