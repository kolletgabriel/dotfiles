#!/usr/bin/zsh

# `ls` and alike:
alias ls="ls --color=always"
alias ll="ls -ohA --group-directories-first"
alias t="tree --filesfirst --noreport -C -L 1"
alias t2="tree --filesfirst --noreport -C -L 2"
alias t3="tree --filesfirst --noreport -C -L 3"

# `cd` backwards:
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# General system utils:
alias grep="grep --color=always"
alias cl="clear"

# Pacman:
alias pqs="pacman -Qs"
alias pqi="pacman -Qii"
alias pss="pacman -Ss"
alias psi="pacman -Sii"
alias ins="sudo pacman -S"
alias upg="sudo pacman -Syu"

# Git:
alias g.="git add ."
alias ga="git add"
alias gc="git commit -m"
alias gs="git status"
alias gpll="git pull"
alias gpsh="git push"

# Main programs:
alias nv="nvim"
alias vi="nvim --noplugin"  # as a lite and fast fallback
alias py="python"

# Misc:
alias ff="fastfetch"
