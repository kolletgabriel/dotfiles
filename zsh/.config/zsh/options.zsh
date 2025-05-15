#!/usr/bin/zsh

# Changing directories:
setopt auto_cd
setopt cd_silent
setopt cdable_vars

# Completion
# setopt menu_complete  # leave it to fzf.

# Expansion and globbing:
setopt extended_glob
setopt glob_dots
setopt magic_equal_subst
# setopt no_case_glob  # it interfers with case-insensitive matching!
setopt no_nomatch

# History:
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt share_history
HISTFILE="$XDG_STATE_HOME/zsh_history"
HISTSIZE=1000
SAVEHIST="$HISTSIZE"

# Input/output:
setopt correct
setopt interactive_comments

# Prompting:
setopt prompt_subst
PS1='%B%F{cyan}[%D{%T}] %f%F{yellow}%n%f%F{red}@%m%f%F{grey} ❯❯%f%b '
PS2='%B%F{grey}❯❯ %f%b'

# Zle:
setopt nobeep
