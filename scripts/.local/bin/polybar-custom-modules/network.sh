#!/bin/sh

switch=0
sleep_pid=0

function toggle() {
    switch="$(((switch + 1) % 2))"

    if [ "$sleep_pid" -ne 0 ]; then
        kill "$sleep_pid" >/dev/null 2>&1
    fi
}

function show() {
     IFS=$'\n'
     conn=($(nmcli -g name,type,device c show --active))
     conn="${conn[0]}"

     IFS=':'
     arr=(${conn[@]})
     uuid="${arr[0]}"
     conn_type="${arr[1]}"
     dev_type="${arr[2]}"

    case "$conn_type" in
        '802-11-wireless')
            [ -z "$1" ] && echo "󰖩 $uuid" && return 0
            echo "󰖩 $(ip -4 -br a show $dev_type | awk '{print $3}')"
            ;;
        '802-3-ethernet')
            [ -z "$1" ] && echo '󰈁 Ethernet' && return 0
            echo "󰈁 $(ip -4 -br a show $dev_type | awk '{print $3}')"
            ;;
        *)
            echo "󱍢 disconnected" && return 1
    esac
}


trap "toggle" USR1

while true; do
    if [ "$switch" -eq 0 ]; then
        show
    else
        show '_'
    fi
    sleep 5 &
    sleep_pid="$!"
    wait
done
