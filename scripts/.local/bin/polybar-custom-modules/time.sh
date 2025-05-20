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
    prefix=''
    hour_now="$(date +%I)"
    case $hour_now in
        '01') prefix='󱑋';;
        '02') prefix='󱑌';;
        '03') prefix='󱑍';;
        '04') prefix='󱑎';;
        '05') prefix='󱑏';;
        '06') prefix='󱑐';;
        '07') prefix='󱑑';;
        '08') prefix='󱑒';;
        '09') prefix='󱑓';;
        '10') prefix='󱑔';;
        '11') prefix='󱑕';;
        '12') prefix='󱑖';;
    esac
    if [ "$switch" -eq 0 ]; then
        date "+$prefix %H:%M"
    else
        date "+$prefix %H:%M:%S"
    fi
    sleep 1 &
    sleep_pid="$!"
    wait
done
