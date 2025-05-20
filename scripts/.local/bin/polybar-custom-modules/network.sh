#!/bin/sh

IFS=$'\n'
conn=($(nmcli -g name,type c show --active))
conn=${conn[0]}

IFS=':'
arr=(${conn[@]})
uuid=${arr[0]}
conn_type=${arr[1]}

if [ $conn_type = '802-11-wireless' ]; then
    echo "󰖩 $uuid"
elif [ $conn_type = '802-3-ethernet' ]; then
    echo "󰈁 Ethernet"
else
    echo "󱍢 disconnected"
fi
