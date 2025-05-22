#!/bin/sh

case "$1" in
    'toclip')
        case "$2" in
            'full')
                shotgun - | \
                xclip -t 'image/png' -selection clipboard;;
            'win')
                shotgun -i "$(xdotool getactivewindow)" - | \
                xclip -t 'image/png' -selection clipboard;;
            'area')
                shotgun -g "$(hacksaw)" - | \
                xclip -t 'image/png' -selection clipboard;;
            *)
                echo "2nd argument must be 'full', 'win', or 'area'."
                return 1
        esac;;
    'noclip')
        fname="$(date +%Y-%m-%d_%H-%M-%S).png"
        case "$2" in
            'full') shotgun "/tmp/$fname";;
            'win') shotgun -i "$(xdotool getactivewindow)" "/tmp/$fname";;
            'area') shotgun -g "$(hacksaw)" "/tmp/$fname";;
            *)
                echo "2nd argument must be 'full', 'win', or 'area'."
                return 1
        esac;;
    *)
        echo "1st argument must be 'toclip' or 'noclip'."
        return 1
esac
