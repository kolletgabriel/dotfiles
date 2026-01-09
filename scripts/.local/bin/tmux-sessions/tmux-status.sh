#!/usr/bin/bash

cwd="#[bg=magenta fg=black] 󰝰 ${1/$HOME/\~} "
sess="#[bg=green fg=black] 󰋃 #S"

if ! git_branch="$(git -C $1 branch --show-current 2>/dev/null)"; then
    echo "$sess $cwd"
else
    [ -n "$git_branch" ] && echo "${sess} #[bg=orange fg=black] 󰘬 ${git_branch} ${cwd}" && exit
    echo "${sess} #[bg=orange fg=black] 󰘬 $(git -C $1 rev-parse --short HEAD) ${cwd}"
fi

# branch="#[bg=orange fg=black] 󰘬 "
# head="#[bg=orange fg=black] 󰘬 $(git -C $1 rev-parse --short HEAD)" \
#     && echo "${sess} ${head} ${cwd}"
