#!/usr/bin/zsh

# `ls` and alike:
alias l="eza -TL 1 --color --icons --group-directories-last"
alias l2="eza -TL 2 --color --icons --group-directories-last"
alias l3="eza -TL 3 --color --icons --group-directories-last"
alias la="eza -ATL 1 --color --icons --group-directories-last"
alias la2="eza -ATL 2 --color --icons --group-directories-last"
alias la3="eza -ATL 3 --color --icons --group-directories-last"
alias ls="ls --color=auto"

# `cd` backwards:
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# General system utils:
alias cl="clear"
alias cp="cp -i"
alias mv="mv -i"
alias grep="grep --color=always"

# Pacman:
alias pqs="pacman -Qs"
alias pqi="pacman -Qii"
alias pss="pacman -Ss"
alias psi="pacman -Sii"
alias ins="sudo pacman -S"
alias upg="sudo pacman -Syu"
alias rmv="sudo pacman -Rnsu"

# Git:
alias g.="git add ."
alias ga="git add"
alias gc="git commit -m"
alias gd="git diff"
alias gs="git status"
alias gpll="git pull"
alias gpsh="git push"

# Main programs:
alias nv="nvim"
alias vi="nvim --noplugin"  # as a lite and fast fallback
alias py="python"

# Misc:
alias ff="fastfetch"
