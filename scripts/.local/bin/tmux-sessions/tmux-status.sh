#!/bin/sh

cwd="#[bg=magenta fg=black] #{pane_current_path} "
sess="#[bg=green fg=black] [#S]"
git status &> /dev/null
if [ "$?" -ne 0 ]; then
    echo "$sess $cwd"
    exit 0
fi

branch="#[bg=orange fg=black] ( 󰘬 $(git rev-parse --abbrev-ref HEAD) )"
echo "$sess $branch $cwd"
