#!/bin/sh

size="${2:-10}"
direction="$1"

# Switch with window in given direction
case "$direction" in
    'west') bspc node @west -r -"$size" || bspc node @east -r -"$size";;
    'east') bspc node @west -r +"$size" || bspc node @east -r +"$size";;
    'north') bspc node @south -r -"$size" || bspc node @north -r -"$size";;
    'south') bspc node @south -r +"$size" || bspc node @north -r +"$size";;
esac
