#!/bin/sh

class="$1"  # i.e. the window name
app="${@:2}"  # the app + all its arguments

bspc rule -a "$class" -o state=floating center=on rectangle=960x540+0+0

# The following command has these hardcodes flags because by now this script
# assumes `$TERMINAL` is Alacritty: (may change in the future!)
"$TERMINAL" --class "$class" -e "$app"
