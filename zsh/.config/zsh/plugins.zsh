#!/usr/bin/zsh

# Ensure Zinit plugin manager installation:
ZINIT_HOME="$XDG_DATA_HOME/zinit/zinit.git"
ZINIT_REPO="https://github.com/zdharma-continuum/zinit.git"
[ -d "$ZINIT_HOME" ] || mkdir -p "$(dirname $ZINIT_HOME)"
[ -d "$ZINIT_HOME/.git" ] || git clone "$ZINIT_REPO" "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# Adding plugins:
zinit light Aloxaf/fzf-tab
zinit light zdharma-continuum/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light jeffreytse/zsh-vi-mode
